package com.jcloudify.app.file;

import com.jcloudify.app.PojaGenerated;

@PojaGenerated
public record FileHash(FileHashAlgorithm algorithm, String value) {}
