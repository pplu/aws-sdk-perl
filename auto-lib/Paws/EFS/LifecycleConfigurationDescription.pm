
package Paws::EFS::LifecycleConfigurationDescription;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::EFS::Types qw/EFS_LifecyclePolicy/;
  has LifecyclePolicies => (is => 'ro', isa => ArrayRef[EFS_LifecyclePolicy]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LifecyclePolicies' => {
                                        'class' => 'Paws::EFS::LifecyclePolicy',
                                        'type' => 'ArrayRef[EFS_LifecyclePolicy]'
                                      }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::LifecycleConfigurationDescription

=head1 ATTRIBUTES


=head2 LifecyclePolicies => ArrayRef[EFS_LifecyclePolicy]

An array of lifecycle management policies. Currently, EFS supports a
maximum of one policy per file system.


=head2 _request_id => Str


=cut

