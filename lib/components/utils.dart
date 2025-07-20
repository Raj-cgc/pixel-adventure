bool checkCollision(player, block) {
  final hitbox = player.hitbox;

  final playerX = player.position.x + hitbox.offsetX;
  final playerY = player.position.y + hitbox.offsetY;
  final playerWidth = hitbox.width;
  final playerHeight = hitbox.height;

  final blockX = block.position.x;
  final blockY = block.position.y;
  final blockWidth = block.width;
  final blockHeight = block.height;

  final fixedPlayerX =
      player.scale.x < 0
          ? playerX - (hitbox.offsetX * 2) - playerWidth
          : playerX;
  final fixedPlayerY = block.isPlatform ? playerY + playerHeight : playerY;

  if (fixedPlayerY < blockY + blockHeight &&
      playerY + playerHeight > blockY &&
      fixedPlayerX < blockX + blockWidth &&
      fixedPlayerX + playerWidth > blockX) {
    return true;
  } else {
    return false;
  }
}
