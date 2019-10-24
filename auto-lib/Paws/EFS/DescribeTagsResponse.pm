
package Paws::EFS::DescribeTagsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::EFS::Types qw/EFS_Tag/;
  has Marker => (is => 'ro', isa => Str);
  has NextMarker => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EFS_Tag], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::EFS::Tag',
                           'type' => 'ArrayRef[EFS_Tag]'
                         },
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'IsRequired' => {
                    'Tags' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::DescribeTagsResponse

=head1 ATTRIBUTES


=head2 Marker => Str

If the request included a C<Marker>, the response returns that value in
this field.


=head2 NextMarker => Str

If a value is present, there are more tags to return. In a subsequent
request, you can provide the value of C<NextMarker> as the value of the
C<Marker> parameter in your next request to retrieve the next set of
tags.


=head2 B<REQUIRED> Tags => ArrayRef[EFS_Tag]

Returns tags associated with the file system as an array of C<Tag>
objects.


=head2 _request_id => Str


=cut

