
package Paws::Backup::GetSupportedResourceTypesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Backup::Types qw//;
  has ResourceTypes => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceTypes' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               '_request_id' => {
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

Paws::Backup::GetSupportedResourceTypesOutput

=head1 ATTRIBUTES


=head2 ResourceTypes => ArrayRef[Str|Undef]

Contains a string with the supported AWS resource types:

=over

=item *

C<EBS> for Amazon Elastic Block Store

=item *

C<SGW> for AWS Storage Gateway

=item *

C<RDS> for Amazon Relational Database Service

=item *

C<DDB> for Amazon DynamoDB

=item *

C<EFS> for Amazon Elastic File System

=back



=head2 _request_id => Str


=cut

