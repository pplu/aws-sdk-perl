# Generated from json/callresult_class.tt

package Paws::MediaStore::ListContainersOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaStore::Types qw/MediaStore_Container/;
  has Containers => (is => 'ro', isa => ArrayRef[MediaStore_Container], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Containers' => {
                                 'class' => 'Paws::MediaStore::Container',
                                 'type' => 'ArrayRef[MediaStore_Container]'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Containers' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::ListContainersOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Containers => ArrayRef[MediaStore_Container]

The names of the containers.


=head2 NextToken => Str

C<NextToken> is the token to use in the next call to C<ListContainers>.
This token is returned only if you included the C<MaxResults> tag in
the original command, and only if there are still containers to return.


=head2 _request_id => Str


=cut

1;