/*
  Warnings:

  - Added the required column `active` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `bar_code` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `bar_code_group` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `code` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `code_group` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `factory_code` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `factory_code_group` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `hot_point` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `status` to the `Product` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `product` ADD COLUMN `active` BOOLEAN NOT NULL,
    ADD COLUMN `bar_code` VARCHAR(191) NOT NULL,
    ADD COLUMN `bar_code_group` VARCHAR(191) NOT NULL,
    ADD COLUMN `branchId` INTEGER NULL,
    ADD COLUMN `code` VARCHAR(191) NOT NULL,
    ADD COLUMN `code_group` VARCHAR(191) NOT NULL,
    ADD COLUMN `colorId` INTEGER NULL,
    ADD COLUMN `factory_code` VARCHAR(191) NOT NULL,
    ADD COLUMN `factory_code_group` VARCHAR(191) NOT NULL,
    ADD COLUMN `hot_point` INTEGER NOT NULL,
    ADD COLUMN `promoId` INTEGER NULL,
    ADD COLUMN `status` VARCHAR(191) NOT NULL;

-- CreateTable
CREATE TABLE `Branch` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `namet` VARCHAR(191) NOT NULL,
    `code` VARCHAR(191) NOT NULL,
    `br_address` VARCHAR(191) NOT NULL,
    `status` BOOLEAN NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Promo` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `namet` VARCHAR(191) NOT NULL,
    `code` VARCHAR(191) NOT NULL,
    `status` BOOLEAN NOT NULL,
    `des` VARCHAR(191) NOT NULL,
    `startdAt` DATETIME(3) NOT NULL,
    `endAt` DATETIME(3) NOT NULL,
    `type` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Color` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `namet` VARCHAR(191) NOT NULL,
    `code` VARCHAR(191) NOT NULL,
    `status` BOOLEAN NOT NULL,
    `des` VARCHAR(191) NOT NULL,
    `image` VARCHAR(191) NOT NULL,
    `short_code` VARCHAR(191) NOT NULL,
    `type` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Product` ADD CONSTRAINT `Product_colorId_fkey` FOREIGN KEY (`colorId`) REFERENCES `Color`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Product` ADD CONSTRAINT `Product_promoId_fkey` FOREIGN KEY (`promoId`) REFERENCES `Promo`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Product` ADD CONSTRAINT `Product_branchId_fkey` FOREIGN KEY (`branchId`) REFERENCES `Branch`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
