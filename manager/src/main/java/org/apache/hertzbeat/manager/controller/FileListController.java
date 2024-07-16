package org.apache.hertzbeat.manager.controller;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.stream.Collectors;

@RestController
public class FileListController {

    private final ResourceLoader resourceLoader;

    @Value("${file.directory:classpath:static}")
    private String directory;

    public FileListController(ResourceLoader resourceLoader) {
        this.resourceLoader = resourceLoader;
    }

    @GetMapping("/static/list-files")
    public ResponseEntity<?> listFiles() throws IOException {
        Resource resource = resourceLoader.getResource(directory);
        Path folderPath = Paths.get(resource.getURI());

        if (!Files.exists(folderPath)) {
            return ResponseEntity.notFound().build();
        }

        var files = Files.walk(folderPath, 1)
                .filter(Files::isRegularFile)
                .map(Path::getFileName)
                .map(Path::toString)
                .collect(Collectors.toList());

        return ResponseEntity.ok(files);
    }
}