# Generated from default/object.tt
package Paws::SageMaker::FileSystemDataSource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw//;
  has DirectoryPath => (is => 'ro', isa => Str, required => 1);
  has FileSystemAccessMode => (is => 'ro', isa => Str, required => 1);
  has FileSystemId => (is => 'ro', isa => Str, required => 1);
  has FileSystemType => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FileSystemAccessMode' => {
                                           'type' => 'Str'
                                         },
               'FileSystemType' => {
                                     'type' => 'Str'
                                   },
               'FileSystemId' => {
                                   'type' => 'Str'
                                 },
               'DirectoryPath' => {
                                    'type' => 'Str'
                                  }
             },
  'IsRequired' => {
                    'FileSystemType' => 1,
                    'FileSystemAccessMode' => 1,
                    'FileSystemId' => 1,
                    'DirectoryPath' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::FileSystemDataSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::FileSystemDataSource object:

  $service_obj->Method(Att1 => { DirectoryPath => $value, ..., FileSystemType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::FileSystemDataSource object:

  $result = $service_obj->Method(...);
  $result->Att1->DirectoryPath

=head1 DESCRIPTION

Specifies a file system data source for a channel.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryPath => Str

  The full path to the directory to associate with the channel.


=head2 B<REQUIRED> FileSystemAccessMode => Str

  The access mode of the mount of the directory associated with the
channel. A directory can be mounted either in C<ro> (read-only) or
C<rw> (read-write) mode.


=head2 B<REQUIRED> FileSystemId => Str

  The file system id.


=head2 B<REQUIRED> FileSystemType => Str

  The file system type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

