# Generated from default/object.tt
package Paws::SSM::OpsItemSummary;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::SSM::Types qw/SSM_OpsItemOperationalData/;
  has CreatedBy => (is => 'ro', isa => Str);
  has CreatedTime => (is => 'ro', isa => Str);
  has LastModifiedBy => (is => 'ro', isa => Str);
  has LastModifiedTime => (is => 'ro', isa => Str);
  has OperationalData => (is => 'ro', isa => SSM_OpsItemOperationalData);
  has OpsItemId => (is => 'ro', isa => Str);
  has Priority => (is => 'ro', isa => Int);
  has Source => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has Title => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastModifiedBy' => {
                                     'type' => 'Str'
                                   },
               'CreatedTime' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           },
               'CreatedBy' => {
                                'type' => 'Str'
                              },
               'Title' => {
                            'type' => 'Str'
                          },
               'OpsItemId' => {
                                'type' => 'Str'
                              },
               'LastModifiedTime' => {
                                       'type' => 'Str'
                                     },
               'Priority' => {
                               'type' => 'Int'
                             },
               'Source' => {
                             'type' => 'Str'
                           },
               'OperationalData' => {
                                      'class' => 'Paws::SSM::OpsItemOperationalData',
                                      'type' => 'SSM_OpsItemOperationalData'
                                    }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::OpsItemSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::OpsItemSummary object:

  $service_obj->Method(Att1 => { CreatedBy => $value, ..., Title => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::OpsItemSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedBy

=head1 DESCRIPTION

A count of OpsItems.

=head1 ATTRIBUTES


=head2 CreatedBy => Str

  The Amazon Resource Name (ARN) of the IAM entity that created the
OpsItem.


=head2 CreatedTime => Str

  The date and time the OpsItem was created.


=head2 LastModifiedBy => Str

  The Amazon Resource Name (ARN) of the IAM entity that created the
OpsItem.


=head2 LastModifiedTime => Str

  The date and time the OpsItem was last updated.


=head2 OperationalData => SSM_OpsItemOperationalData

  Operational data is custom data that provides useful reference details
about the OpsItem.


=head2 OpsItemId => Str

  The ID of the OpsItem.


=head2 Priority => Int

  The importance of this OpsItem in relation to other OpsItems in the
system.


=head2 Source => Str

  The impacted AWS resource.


=head2 Status => Str

  The OpsItem status. Status can be C<Open>, C<In Progress>, or
C<Resolved>.


=head2 Title => Str

  A short heading that describes the nature of the OpsItem and the
impacted resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

