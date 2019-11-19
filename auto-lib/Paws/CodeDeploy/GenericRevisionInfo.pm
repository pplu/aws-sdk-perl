# Generated from default/object.tt
package Paws::CodeDeploy::GenericRevisionInfo;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str/;
  use Paws::CodeDeploy::Types qw//;
  has DeploymentGroups => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Description => (is => 'ro', isa => Str);
  has FirstUsedTime => (is => 'ro', isa => Str);
  has LastUsedTime => (is => 'ro', isa => Str);
  has RegisterTime => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Description' => {
                                  'type' => 'Str'
                                },
               'LastUsedTime' => {
                                   'type' => 'Str'
                                 },
               'DeploymentGroups' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'RegisterTime' => {
                                   'type' => 'Str'
                                 },
               'FirstUsedTime' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'FirstUsedTime' => 'firstUsedTime',
                       'DeploymentGroups' => 'deploymentGroups',
                       'RegisterTime' => 'registerTime',
                       'Description' => 'description',
                       'LastUsedTime' => 'lastUsedTime'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GenericRevisionInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::GenericRevisionInfo object:

  $service_obj->Method(Att1 => { DeploymentGroups => $value, ..., RegisterTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::GenericRevisionInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->DeploymentGroups

=head1 DESCRIPTION

Information about an application revision.

=head1 ATTRIBUTES


=head2 DeploymentGroups => ArrayRef[Str|Undef]

  The deployment groups for which this is the current target revision.


=head2 Description => Str

  A comment about the revision.


=head2 FirstUsedTime => Str

  When the revision was first used by AWS CodeDeploy.


=head2 LastUsedTime => Str

  When the revision was last used by AWS CodeDeploy.


=head2 RegisterTime => Str

  When the revision was registered with AWS CodeDeploy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

