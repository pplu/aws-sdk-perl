# Generated from json/callresult_class.tt

package Paws::Datasync::CreateLocationEfsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Datasync::Types qw//;
  has LocationArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LocationArn' => {
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


### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateLocationEfsResponse

=head1 ATTRIBUTES


=head2 LocationArn => Str

The Amazon Resource Name (ARN) of the Amazon EFS file system location
that is created.


=head2 _request_id => Str


=cut

1;