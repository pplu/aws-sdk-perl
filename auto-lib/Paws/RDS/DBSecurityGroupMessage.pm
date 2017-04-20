
package Paws::RDS::DBSecurityGroupMessage;
  use Moose;
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBSecurityGroup]', request_name => 'DBSecurityGroup', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBSecurityGroupMessage

=head1 ATTRIBUTES


=head2 DBSecurityGroups => ArrayRef[L<Paws::RDS::DBSecurityGroup>]

A list of DBSecurityGroup instances.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

