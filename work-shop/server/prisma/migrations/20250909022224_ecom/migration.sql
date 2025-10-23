/*
  Warnings:

  - Added the required column `age` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `birthday` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `birthmonth` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `birthyear` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `user` ADD COLUMN `age` INTEGER NOT NULL,
    ADD COLUMN `birthday` INTEGER NOT NULL,
    ADD COLUMN `birthmonth` INTEGER NOT NULL,
    ADD COLUMN `birthyear` INTEGER NOT NULL,
    ADD COLUMN `country` VARCHAR(191) NULL,
    ADD COLUMN `mem_lastlogin` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `mem_lastlogout` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `sex` VARCHAR(191) NULL,
    ADD COLUMN `username` VARCHAR(191) NULL,
    ADD COLUMN `zipcode` VARCHAR(191) NULL;
