# Generated from default/object.tt
package Paws::WorkDocs::Participants;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::WorkDocs::Types qw/WorkDocs_UserMetadata WorkDocs_GroupMetadata/;
  has Groups => (is => 'ro', isa => ArrayRef[WorkDocs_GroupMetadata]);
  has Users => (is => 'ro', isa => ArrayRef[WorkDocs_UserMetadata]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Groups' => {
                             'class' => 'Paws::WorkDocs::GroupMetadata',
                             'type' => 'ArrayRef[WorkDocs_GroupMetadata]'
                           },
               'Users' => {
                            'class' => 'Paws::WorkDocs::UserMetadata',
                            'type' => 'ArrayRef[WorkDocs_UserMetadata]'
                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::Participants

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkDocs::Participants object:

  $service_obj->Method(Att1 => { Groups => $value, ..., Users => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkDocs::Participants object:

  $result = $service_obj->Method(...);
  $result->Att1->Groups

=head1 DESCRIPTION

Describes the users or user groups.

=head1 ATTRIBUTES


=head2 Groups => ArrayRef[WorkDocs_GroupMetadata]

  The list of user groups.


=head2 Users => ArrayRef[WorkDocs_UserMetadata]

  The list of users.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

