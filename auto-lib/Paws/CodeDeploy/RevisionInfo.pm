package Paws::CodeDeploy::RevisionInfo;
  use Moose;
  has GenericRevisionInfo => (is => 'ro', isa => 'Paws::CodeDeploy::GenericRevisionInfo', request_name => 'genericRevisionInfo', traits => ['NameInRequest']);
  has RevisionLocation => (is => 'ro', isa => 'Paws::CodeDeploy::RevisionLocation', request_name => 'revisionLocation', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::RevisionInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::RevisionInfo object:

  $service_obj->Method(Att1 => { GenericRevisionInfo => $value, ..., RevisionLocation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::RevisionInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->GenericRevisionInfo

=head1 DESCRIPTION

Information about an application revision.

=head1 ATTRIBUTES


=head2 GenericRevisionInfo => L<Paws::CodeDeploy::GenericRevisionInfo>

  Information about an application revision, including usage details and
associated deployment groups.


=head2 RevisionLocation => L<Paws::CodeDeploy::RevisionLocation>

  Information about the location and type of an application revision.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

