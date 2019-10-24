# Generated from default/object.tt
package Paws::IoT::StreamInfo;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::IoT::Types qw/IoT_StreamFile/;
  has CreatedAt => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Files => (is => 'ro', isa => ArrayRef[IoT_StreamFile]);
  has LastUpdatedAt => (is => 'ro', isa => Str);
  has RoleArn => (is => 'ro', isa => Str);
  has StreamArn => (is => 'ro', isa => Str);
  has StreamId => (is => 'ro', isa => Str);
  has StreamVersion => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StreamVersion' => {
                                    'type' => 'Int'
                                  },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'StreamArn' => {
                                'type' => 'Str'
                              },
               'StreamId' => {
                               'type' => 'Str'
                             },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'LastUpdatedAt' => {
                                    'type' => 'Str'
                                  },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Files' => {
                            'class' => 'Paws::IoT::StreamFile',
                            'type' => 'ArrayRef[IoT_StreamFile]'
                          }
             },
  'NameInRequest' => {
                       'StreamVersion' => 'streamVersion',
                       'RoleArn' => 'roleArn',
                       'StreamArn' => 'streamArn',
                       'StreamId' => 'streamId',
                       'CreatedAt' => 'createdAt',
                       'LastUpdatedAt' => 'lastUpdatedAt',
                       'Description' => 'description',
                       'Files' => 'files'
                     }
}
;
    return $Params_map;
  }


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


=head2 Files => ArrayRef[IoT_StreamFile]

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

