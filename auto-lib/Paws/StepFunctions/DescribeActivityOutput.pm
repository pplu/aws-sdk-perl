# Generated from json/callresult_class.tt

package Paws::StepFunctions::DescribeActivityOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StepFunctions::Types qw//;
  has ActivityArn => (is => 'ro', isa => Str, required => 1);
  has CreationDate => (is => 'ro', isa => Str, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ActivityArn' => {
                                  'type' => 'Str'
                                },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'ActivityArn' => 'activityArn',
                       'CreationDate' => 'creationDate',
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'ActivityArn' => 1,
                    'CreationDate' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::DescribeActivityOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActivityArn => Str

The Amazon Resource Name (ARN) that identifies the activity.


=head2 B<REQUIRED> CreationDate => Str

The date the activity is created.


=head2 B<REQUIRED> Name => Str

The name of the activity.

A name must I<not> contain:

=over

=item *

whitespace

=item *

brackets C<E<lt> E<gt> { } [ ]>

=item *

wildcard characters C<? *>

=item *

special characters C<" # % \ ^ | ~ ` $ & , ; : />

=item *

control characters (C<U+0000-001F>, C<U+007F-009F>)

=back



=head2 _request_id => Str


=cut

1;