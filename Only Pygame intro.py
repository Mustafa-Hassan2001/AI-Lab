import pygame

pygame.init()

SCREEN_WIDTH = 800
SCREEN_HEIGHT = 600

screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
player = pygame.Rect(250, 250, 30, 30)
run = True
clock = pygame.time.Clock()

while run:
    screen.fill((0, 0, 0))

    pygame.draw.rect(screen, (250, 0, 0), player)

    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            run = False
        elif event.type == pygame.KEYDOWN:
            if event.key == pygame.K_a:
                player.move_ip(-1, 0)
            elif event.key == pygame.K_d:
                player.move_ip(1, 0)
            elif event.key == pygame.K_w:
                player.move_ip(0, -1)
            elif event.key == pygame.K_s:
                player.move_ip(0, 1)

    pygame.display.update()
    clock.tick(60)

pygame.quit()
