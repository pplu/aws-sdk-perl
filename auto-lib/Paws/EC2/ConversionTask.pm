package Paws::EC2::ConversionTask;
  use Moo;  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ImportVolumeTaskDetails EC2_Tag EC2_ImportInstanceTaskDetails/;
  has ConversionTaskId => (is => 'ro', isa => Str);
  has ExpirationTime => (is => 'ro', isa => Str);
  has ImportInstance => (is => 'ro', isa => EC2_ImportInstanceTaskDetails);
  has ImportVolume => (is => 'ro', isa => EC2_ImportVolumeTaskDetails);
  has State => (is => 'ro', isa => Str);
  has StatusMessage => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ExpirationTime' => {
                                     'type' => 'Str'
                                   },
               'ImportVolume' => {
                                   'class' => 'Paws::EC2::ImportVolumeTaskDetails',
                                   'type' => 'EC2_ImportVolumeTaskDetails'
                                 },
               'ConversionTaskId' => {
                                       'type' => 'Str'
                                     },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         },
               'ImportInstance' => {
                                     'class' => 'Paws::EC2::ImportInstanceTaskDetails',
                                     'type' => 'EC2_ImportInstanceTaskDetails'
                                   },
               'StatusMessage' => {
                                    'type' => 'Str'
                                  },
               'State' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'ExpirationTime' => 'expirationTime',
                       'ImportVolume' => 'importVolume',
                       'ConversionTaskId' => 'conversionTaskId',
                       'Tags' => 'tagSet',
                       'ImportInstance' => 'importInstance',
                       'StatusMessage' => 'statusMessage',
                       'State' => 'state'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ConversionTask

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ConversionTask object:

  $service_obj->Method(Att1 => { ConversionTaskId => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ConversionTask object:

  $result = $service_obj->Method(...);
  $result->Att1->ConversionTaskId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ConversionTaskId => Str

  The ID of the conversion task.


=head2 ExpirationTime => Str

  The time when the task expires. If the upload isn't complete before the
expiration time, we automatically cancel the task.


=head2 ImportInstance => EC2_ImportInstanceTaskDetails

  If the task is for importing an instance, this contains information
about the import instance task.


=head2 ImportVolume => EC2_ImportVolumeTaskDetails

  If the task is for importing a volume, this contains information about
the import volume task.


=head2 State => Str

  The state of the conversion task.


=head2 StatusMessage => Str

  The status message related to the conversion task.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
