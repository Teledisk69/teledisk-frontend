import { Prisma } from "./client"


const db = Prisma

export async function getUploads(){
  const uploads = await db.file.findMany()
  return uploads
}

export async function createUpload(){
  await db.file.create({
    data:{
      fileName:"Avengers.mkv",
      fileSize:"8gb",
      subfile:{
        create:{
          fileId:"lmaoxd3d"
        },
      },
    },
  })
}
