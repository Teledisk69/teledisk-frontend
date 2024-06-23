-- CreateTable
CREATE TABLE "Subfiles" (
    "fileId" VARCHAR(255) NOT NULL,
    "fileRef" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "File" (
    "id" SERIAL NOT NULL,
    "fileName" VARCHAR(255) NOT NULL,
    "fileSize" VARCHAR NOT NULL,
    "fileDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "File_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Subfiles_fileId_key" ON "Subfiles"("fileId");

-- AddForeignKey
ALTER TABLE "Subfiles" ADD CONSTRAINT "Subfiles_fileRef_fkey" FOREIGN KEY ("fileRef") REFERENCES "File"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
