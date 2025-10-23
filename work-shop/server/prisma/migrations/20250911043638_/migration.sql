/*
  Warnings:

  - Made the column `roleId` on table `user` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `user` MODIFY `roleId` INTEGER NOT NULL;
