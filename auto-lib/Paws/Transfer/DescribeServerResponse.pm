# Generated from json/callresult_class.tt

package Paws::Transfer::DescribeServerResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Transfer::Types qw/Transfer_DescribedServer/;
  has Server => (is => 'ro', isa => Transfer_DescribedServer, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Server' => {
                             'class' => 'Paws::Transfer::DescribedServer',
                             'type' => 'Transfer_DescribedServer'
                           }
             },
  'IsRequired' => {
                    'Server' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribeServerResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Server => Transfer_DescribedServer

An array containing the properties of the server with the C<ServerID>
you specified.


=head2 _request_id => Str


=cut

1;