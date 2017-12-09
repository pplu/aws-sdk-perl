package Paws::ServiceCatalog::ProvisioningArtifactProperties;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Info => (is => 'ro', isa => 'Paws::ServiceCatalog::ProvisioningArtifactInfo', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ProvisioningArtifactProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ProvisioningArtifactProperties object:

  $service_obj->Method(Att1 => { Description => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ProvisioningArtifactProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Information about a provisioning artifact (also known as a version) for
a product.

=head1 ATTRIBUTES


=head2 Description => Str

  The description of the provisioning artifact, including how it differs
from the previous provisioning artifact.


=head2 B<REQUIRED> Info => L<Paws::ServiceCatalog::ProvisioningArtifactInfo>

  The URL of the CloudFormation template in Amazon S3. Specify the URL in
JSON format as follows:

C<"LoadTemplateFromURL":
"https://s3.amazonaws.com/cf-templates-ozkq9d3hgiq2-us-east-1/...">


=head2 Name => Str

  The name of the provisioning artifact (for example, v1 v2beta). No
spaces are allowed.


=head2 Type => Str

  The type of provisioning artifact.

=over

=item *

C<CLOUD_FORMATION_TEMPLATE> - AWS CloudFormation template

=item *

C<MARKETPLACE_AMI> - AWS Marketplace AMI

=item *

C<MARKETPLACE_CAR> - AWS Marketplace Clusters and AWS Resources

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

