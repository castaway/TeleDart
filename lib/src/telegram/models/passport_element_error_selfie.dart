/**
 * TeleDart - Telegram Bot API for Dart
 * Copyright (C) 2018  Dino PH Leung
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

part of '../model.dart';

/// Represents an issue with the selfie with a document.
/// The error is considered resolved when the file with the selfie changes.
///
/// https://core.telegram.org/bots/api#passportelementerrorselfie
@JsonSerializable()
class PassportElementErrorSelfie implements PassportElementError {
  @override
  String source;
  @override
  String type;
  @override
  String message;
  String file_hash;
  PassportElementErrorSelfie(
      {this.source, this.type, this.message, this.file_hash});
  factory PassportElementErrorSelfie.fromJson(Map<String, dynamic> json) =>
      _$PassportElementErrorSelfieFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$PassportElementErrorSelfieToJson(this);
}