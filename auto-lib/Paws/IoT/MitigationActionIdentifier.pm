# Generated from default/object.tt
package Paws::IoT::MitigationActionIdentifier;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has ActionArn => (is => 'ro', isa => Str);
  has ActionName => (is => 'ro', isa => Str);
  has CreationDate => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ActionArn' => 'actionArn',
                       'ActionName' => 'actionName',
                       'CreationDate' => 'creationDate'
                     },
  'types' => {
               'ActionArn' => {
                                'type' => 'Str'
                              },
               'ActionName' => {
                                 'type' => 'Str'
                               },
               'CreationDate' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::MitigationActionIdentifier

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::MitigationActionIdentifier object:

  $service_obj->Method(Att1 => { ActionArn => $value, ..., CreationDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::MitigationActionIdentifier object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionArn

=head1 DESCRIPTION

Information that identifies a mitigation action. This information is
returned by ListMitigationActions.

=head1 ATTRIBUTES


=head2 ActionArn => Str

  The IAM role ARN used to apply this mitigation action.


=head2 ActionName => Str

  The friendly name of the mitigation action.


=head2 CreationDate => Str

  The date when this mitigation action was created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

