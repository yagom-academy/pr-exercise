## Trouble shooting
### 포크 후 브랜치를 만들었는데, branch -r을 해도 제가 만든 브랜치가 나오지 않아요

저도 norang님과 동일한 문제를 겪었습니다. 포크 후에, 원격에서 branch를 만들었지만, 터미널에서 제 브랜치를 확인할 수 없었습니다.
이것은 터미널에서 branch를 업데이트 시켜주면, 문제를 해결할 수 있습니다.
(새로운 브랜치가 나올 때 마다 포크를 다시 할 순 없으니까요!) 

```
git remote update                                            # 원격 브랜치를 업데이트 시킨다.
git branch -r                                                     # 원격에 있는 브랜치를 다시 가져온다. -> 내가 만든 브랜치가 보인다.
git checkout -t origin/{가져올 branch}            # 브랜치 이동!
```

### 추가 꿀팁
```
git branch -a                                                     # 로컬 브랜치 확인
git checkout -b {브랜치이름}                             # 해당 브랜치를 만들고, 바로 이동한다! (원래는 git branch 이름 , git checkout 이름 이렇게 두 단계를 거쳐야한다)
```

- [참고 블로그](https://velog.io/@juno7803/git-원격-브랜치-가져오기remote-branch)
