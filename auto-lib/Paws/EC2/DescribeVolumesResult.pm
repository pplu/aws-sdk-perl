
package Paws::EC2::DescribeVolumesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_Volume/;
  has NextToken => (is => 'ro', isa => Str);
  has Volumes => (is => 'ro', isa => ArrayRef[EC2_Volume]);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'Volumes' => {
                              'class' => 'Paws::EC2::Volume',
                              'type' => 'ArrayRef[EC2_Volume]'
                            },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Volumes' => 'volumeSet',
                       'NextToken' => 'nextToken'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVolumesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<NextToken> value to include in a future C<DescribeVolumes>
request. When the results of a C<DescribeVolumes> request exceed
C<MaxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 Volumes => ArrayRef[EC2_Volume]

Information about the volumes.


=head2 _request_id => Str


=cut

