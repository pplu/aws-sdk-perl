
package Paws::KinesisVideoArchivedMedia::GetMediaForFragmentList;
  use Moose;
  has Fragments => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMediaForFragmentList');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/getMediaForFragmentList');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideoArchivedMedia::GetMediaForFragmentListOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoArchivedMedia::GetMediaForFragmentList - Arguments for method GetMediaForFragmentList on L<Paws::KinesisVideoArchivedMedia>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMediaForFragmentList on the 
Amazon Kinesis Video Streams Archived Media service. Use the attributes of this class
as arguments to method GetMediaForFragmentList.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMediaForFragmentList.

As an example:

  $service_obj->GetMediaForFragmentList(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Fragments => ArrayRef[Str|Undef]

A list of the numbers of fragments for which to retrieve media. You
retrieve these values with ListFragments.



=head2 B<REQUIRED> StreamName => Str

The name of the stream from which to retrieve fragment media.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMediaForFragmentList in L<Paws::KinesisVideoArchivedMedia>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

