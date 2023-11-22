(defun setup-docker ()
  (use-package docker)
  )

(setup-docker)

(defhydra hydra-docker (:timeout 10)
  "Docker"
  ("lc" docker-containers)
  ("li" docker-images)
  ("ri" docker-image-rm)
  ("rc" docker-contianer-rm)
  ("cb" docker-compose-build)
  ("cu" docker-compose-up)
  ("cd" docker-compose-down)
  ("q" nil "Done" :exit t)
  ) 
(rune/leader-keys
  "d" '(hydra-docker/body :which-key "Docker")
  )
