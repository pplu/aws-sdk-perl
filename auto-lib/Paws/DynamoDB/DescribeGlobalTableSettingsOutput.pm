
package Paws::DynamoDB::DescribeGlobalTableSettingsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Type::Utils qw/class_type/;
    my $ReplicaSettingsDescription = class_type 'Paws::DynamoDB::ReplicaSettingsDescription';
  
  has GlobalTableName => (is => 'ro', isa => Str);
  has ReplicaSettings => (is => 'ro', isa => ArrayRef[$ReplicaSettingsDescription]);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'ReplicaSettings' => {
                                                 'class' => 'Paws::DynamoDB::ReplicaSettingsDescription',
                                                 'type' => 'ArrayRef[$ReplicaSettingsDescription]'
                                               },
                          'GlobalTableName' => {
                                                 'type' => 'Str'
                                               }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeGlobalTableSettingsOutput

=head1 ATTRIBUTES


=head2 GlobalTableName => Str

The name of the global table.


=head2 ReplicaSettings => ArrayRef[$ReplicaSettingsDescription]

The Region-specific settings for the global table.


=head2 _request_id => Str


=cut

1;