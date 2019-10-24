
package Paws::CloudDirectory::ApplySchemaResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudDirectory::Types qw//;
  has AppliedSchemaArn => (is => 'ro', isa => Str);
  has DirectoryArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AppliedSchemaArn' => {
                                       'type' => 'Str'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DirectoryArn' => {
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

Paws::CloudDirectory::ApplySchemaResponse

=head1 ATTRIBUTES


=head2 AppliedSchemaArn => Str

The applied schema ARN that is associated with the copied schema in the
Directory. You can use this ARN to describe the schema information
applied on this directory. For more information, see arns.


=head2 DirectoryArn => Str

The ARN that is associated with the Directory. For more information,
see arns.


=head2 _request_id => Str


=cut

