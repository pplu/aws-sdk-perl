package Paws::CodeDeploy::RevisionLocation;
  use Moose;
  has gitHubLocation => (is => 'ro', isa => 'Paws::CodeDeploy::GitHubLocation');
  has revisionType => (is => 'ro', isa => 'Str');
  has s3Location => (is => 'ro', isa => 'Paws::CodeDeploy::S3Location');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::RevisionLocation

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::RevisionLocation object:

  $service_obj->Method(Att1 => { gitHubLocation => $value, ..., s3Location => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::RevisionLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->gitHubLocation

=head1 ATTRIBUTES

=head2 gitHubLocation => Paws::CodeDeploy::GitHubLocation

  

=head2 revisionType => Str

  

The application revision's type:

=over

=item * S3: An application revision stored in Amazon S3.

=item * GitHub: An application revision stored in GitHub.

=back










=head2 s3Location => Paws::CodeDeploy::S3Location

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

