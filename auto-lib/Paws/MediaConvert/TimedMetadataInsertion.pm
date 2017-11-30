package Paws::MediaConvert::TimedMetadataInsertion;
  use Moose;
  has Id3Insertions => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::Id3Insertion]', request_name => 'id3Insertions', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::TimedMetadataInsertion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::TimedMetadataInsertion object:

  $service_obj->Method(Att1 => { Id3Insertions => $value, ..., Id3Insertions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::TimedMetadataInsertion object:

  $result = $service_obj->Method(...);
  $result->Att1->Id3Insertions

=head1 DESCRIPTION

Enable Timed metadata insertion (TimedMetadataInsertion) to include ID3
tags in your job. To include timed metadata, you must enable it here,
enable it in each output container, and specify tags and timecodes in
ID3 insertion (Id3Insertion) objects.

=head1 ATTRIBUTES


=head2 Id3Insertions => ArrayRef[L<Paws::MediaConvert::Id3Insertion>]

  Id3Insertions contains the array of Id3Insertion instances.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

