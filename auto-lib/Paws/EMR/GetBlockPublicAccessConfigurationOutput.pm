# Generated from json/callresult_class.tt

package Paws::EMR::GetBlockPublicAccessConfigurationOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::EMR::Types qw/EMR_BlockPublicAccessConfiguration EMR_BlockPublicAccessConfigurationMetadata/;
  has BlockPublicAccessConfiguration => (is => 'ro', isa => EMR_BlockPublicAccessConfiguration, required => 1);
  has BlockPublicAccessConfigurationMetadata => (is => 'ro', isa => EMR_BlockPublicAccessConfigurationMetadata, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'BlockPublicAccessConfigurationMetadata' => 1,
                    'BlockPublicAccessConfiguration' => 1
                  },
  'types' => {
               'BlockPublicAccessConfiguration' => {
                                                     'type' => 'EMR_BlockPublicAccessConfiguration',
                                                     'class' => 'Paws::EMR::BlockPublicAccessConfiguration'
                                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BlockPublicAccessConfigurationMetadata' => {
                                                             'type' => 'EMR_BlockPublicAccessConfigurationMetadata',
                                                             'class' => 'Paws::EMR::BlockPublicAccessConfigurationMetadata'
                                                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::EMR::GetBlockPublicAccessConfigurationOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlockPublicAccessConfiguration => EMR_BlockPublicAccessConfiguration

A configuration for Amazon EMR block public access. The configuration
applies to all clusters created in your account for the current Region.
The configuration specifies whether block public access is enabled. If
block public access is enabled, security groups associated with the
cluster cannot have rules that allow inbound traffic from 0.0.0.0/0 or
::/0 on a port, unless the port is specified as an exception using
C<PermittedPublicSecurityGroupRuleRanges> in the
C<BlockPublicAccessConfiguration>. By default, Port 22 (SSH) is an
exception, and public access is allowed on this port. You can change
this by updating the block public access configuration to remove the
exception.


=head2 B<REQUIRED> BlockPublicAccessConfigurationMetadata => EMR_BlockPublicAccessConfigurationMetadata

Properties that describe the AWS principal that created the
C<BlockPublicAccessConfiguration> using the
C<PutBlockPublicAccessConfiguration> action as well as the date and
time that the configuration was created. Each time a configuration for
block public access is updated, Amazon EMR updates this metadata.


=head2 _request_id => Str


=cut

1;