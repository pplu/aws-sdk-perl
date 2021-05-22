
package Paws::Backup::GetSupportedResourceTypesOutput;
  use Moose;
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetSupportedResourceTypesOutput

=head1 ATTRIBUTES


=head2 ResourceTypes => ArrayRef[Str|Undef]

Contains a string with the supported AWS resource types:

=over

=item *

C<DynamoDB> for Amazon DynamoDB

=item *

C<EBS> for Amazon Elastic Block Store

=item *

C<EC2> for Amazon Elastic Compute Cloud

=item *

C<EFS> for Amazon Elastic File System

=item *

C<RDS> for Amazon Relational Database Service

=item *

C<Aurora> for Amazon Aurora

=item *

C<Storage Gateway> for AWS Storage Gateway

=back



=head2 _request_id => Str


=cut

