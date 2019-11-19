# Generated from default/object.tt
package Paws::IoT::PolicyVersion;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::IoT::Types qw//;
  has CreateDate => (is => 'ro', isa => Str);
  has IsDefaultVersion => (is => 'ro', isa => Bool);
  has VersionId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'VersionId' => 'versionId',
                       'IsDefaultVersion' => 'isDefaultVersion',
                       'CreateDate' => 'createDate'
                     },
  'types' => {
               'CreateDate' => {
                                 'type' => 'Str'
                               },
               'VersionId' => {
                                'type' => 'Str'
                              },
               'IsDefaultVersion' => {
                                       'type' => 'Bool'
                                     }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::PolicyVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::PolicyVersion object:

  $service_obj->Method(Att1 => { CreateDate => $value, ..., VersionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::PolicyVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->CreateDate

=head1 DESCRIPTION

Describes a policy version.

=head1 ATTRIBUTES


=head2 CreateDate => Str

  The date and time the policy was created.


=head2 IsDefaultVersion => Bool

  Specifies whether the policy version is the default.


=head2 VersionId => Str

  The policy version ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

