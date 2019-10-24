# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::ApplyEnvironmentManagedActionResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElasticBeanstalk::Types qw//;
  has ActionDescription => (is => 'ro', isa => Str);
  has ActionId => (is => 'ro', isa => Str);
  has ActionType => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ActionType' => {
                                 'type' => 'Str'
                               },
               'ActionId' => {
                               'type' => 'Str'
                             },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ActionDescription' => {
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

Paws::ElasticBeanstalk::ApplyEnvironmentManagedActionResult

=head1 ATTRIBUTES


=head2 ActionDescription => Str

A description of the managed action.


=head2 ActionId => Str

The action ID of the managed action.


=head2 ActionType => Str

The type of managed action.

Valid values are: C<"InstanceRefresh">, C<"PlatformUpdate">, C<"Unknown">
=head2 Status => Str

The status of the managed action.


=head2 _request_id => Str


=cut

