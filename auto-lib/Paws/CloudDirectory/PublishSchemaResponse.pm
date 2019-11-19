
package Paws::CloudDirectory::PublishSchemaResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudDirectory::Types qw//;
  has PublishedSchemaArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PublishedSchemaArn' => {
                                         'type' => 'Str'
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

Paws::CloudDirectory::PublishSchemaResponse

=head1 ATTRIBUTES


=head2 PublishedSchemaArn => Str

The ARN that is associated with the published schema. For more
information, see arns.


=head2 _request_id => Str


=cut

