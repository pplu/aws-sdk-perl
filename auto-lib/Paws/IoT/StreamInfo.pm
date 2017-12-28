package Paws::IoT::StreamInfo;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Files => (is => 'ro', isa => 'ArrayRef[Paws::IoT::StreamFile]', request_name => 'files', traits => ['NameInRequest']);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedAt', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest']);
  has StreamArn => (is => 'ro', isa => 'Str', request_name => 'streamArn', traits => ['NameInRequest']);
  has StreamId => (is => 'ro', isa => 'Str', request_name => 'streamId', traits => ['NameInRequest']);
  has StreamVersion => (is => 'ro', isa => 'Int', request_name => 'streamVersion', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::StreamInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::StreamInfo object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., StreamVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::StreamInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

Information about a stream.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

  The date when the stream was created.


=head2 Description => Str

  The description of the stream.


=head2 Files => ArrayRef[L<Paws::IoT::StreamFile>]

  The files to stream.


=head2 LastUpdatedAt => Str

  The date when the stream was last updated.


=head2 RoleArn => Str

  An IAM role AWS IoT assumes to access your S3 files.


=head2 StreamArn => Str

  The stream ARN.


=head2 StreamId => Str

  The stream ID.


=head2 StreamVersion => Int

  The stream version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

