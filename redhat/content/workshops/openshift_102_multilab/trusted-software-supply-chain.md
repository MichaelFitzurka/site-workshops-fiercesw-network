---
title: Trusted Software Supply Chain
workshops: secure_software_factory
workshop_weight: 13
layout: lab
---

# Trusted Software Supply Chain
The notion of a Trusted Software Supply Chain is that of applying an assembly line approach to software that includes building increasing levels of assurance before marking an artifact as ready to deploy to production.

In this workshop, you will use build orchestration tools such as CloudBees Enterprise Jenkins, Kubernetes, and OpenShift to support implementing and integrating [continuous delivery (CD)][1] as the foundation of automating the various stages of the deployment lifecycle are represented - from development, multiple types of testing, user acceptance, staging, to production release.

<img src="../images/trusted_software_supply_chain.png" width="900" />

For many organizations, obtaining Authority to Operate (ATO) is an arduous process requiring hundreds of pages of documentation, and can prevent organizations from adopting continuous delivery practices for fear of falling out of compliance. Each phase in our Trusted Software Supply Chain will have a policy defining the stage gate for success and will generate a documentation artifact that will later be used as part of the [ATO process][2].

Having a secure foundation for your applications is a key component to a Trusted Software Supply Chain. In the following lab exercises, your applications will inherit these security controls from the accredited OpenShift platform.

The approach towards the Authorization and Accreditation (A&A) process with OpenShift follows a Landlord/Tenant model. OpenShift is a container application platform that provides a standardized operating environment and when assessing system boundaries, a delineation should be made between the OpenShift system itself, which operates as a Landlord, and the tenant application, which consumes the OpenShift service.

<img src="../images/security_inheritance_model.png" width="700" />

In Landlord/Tenant system security plans (SSP), many security controls are inherited from the Landlord's SSP, but some controls remain the responsibility of the OpenShift consumers. Following this division of responsibilities illustrated in the diagram above, some controls would be considered the responsibility of the tenant, whereas a good number of controls are already taken care of by the Landlord.

# CI/CD Differences
Before moving forward, it is important to understand the difference between [Continuous Integration (CI), Continuous Delivery (CD), and Continuous Deployment][3].

# Summary
Modern Software Development Lifecycles (SDLCs) require automation, integration, and management to develop and deploy with agility.  The agility often comes at the cost of security, though with key Open-Source platforms you can safe-guard your Software Supply Chain which helps develop worthy software.

[1]: https://en.wikipedia.org/wiki/Continuous_delivery
[2]: https://cloud.gov/docs/compliance/ato-process/
[3]: https://stackoverflow.com/questions/28608015/continuous-integration-vs-continuous-delivery-vs-continuous-deployment

{{< importPartial "footer/footer.html" >}}
