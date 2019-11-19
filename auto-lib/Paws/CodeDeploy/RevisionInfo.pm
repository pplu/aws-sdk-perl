# Generated from default/object.tt
package Paws::CodeDeploy::RevisionInfo;
  use Moo;
  use Types::Standard qw//;
  use Paws::CodeDeploy::Types qw/CodeDeploy_GenericRevisionInfo CodeDeploy_RevisionLocation/;
  has GenericRevisionInfo => (is => 'ro', isa => CodeDeploy_GenericRevisionInfo);
  has RevisionLocation => (is => 'ro', isa => CodeDeploy_RevisionLocation);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RevisionLocation' => {
                                       'class' => 'Paws::CodeDeploy::RevisionLocation',
                                       'type' => 'CodeDeploy_RevisionLocation'
                                     },
               'GenericRevisionInfo' => {
                                          'class' => 'Paws::CodeDeploy::GenericRevisionInfo',
                                          'type' => 'CodeDeploy_GenericRevisionInfo'
                                        }
             },
  'NameInRequest' => {
                       'GenericRevisionInfo' => 'genericRevisionInfo',
                       'RevisionLocation' => 'revisionLocation'
                     }
}
;
    return $Params_map;
  }


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


=head2 GenericRevisionInfo => CodeDeploy_GenericRevisionInfo

  Information about an application revision, including usage details and
associated deployment groups.


=head2 RevisionLocation => CodeDeploy_RevisionLocation

  Information about the location and type of an application revision.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

