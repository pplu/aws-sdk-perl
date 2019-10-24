
package Paws::EFS::PutLifecycleConfiguration;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::EFS::Types qw/EFS_LifecyclePolicy/;
  has FileSystemId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has LifecyclePolicies => (is => 'ro', isa => ArrayRef[EFS_LifecyclePolicy], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutLifecycleConfiguration');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/2015-02-01/file-systems/{FileSystemId}/lifecycle-configuration');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EFS::LifecycleConfigurationDescription');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LifecyclePolicies' => {
                                        'class' => 'Paws::EFS::LifecyclePolicy',
                                        'type' => 'ArrayRef[EFS_LifecyclePolicy]'
                                      },
               'FileSystemId' => {
                                   'type' => 'Str'
                                 }
             },
  'ParamInURI' => {
                    'FileSystemId' => 'FileSystemId'
                  },
  'IsRequired' => {
                    'LifecyclePolicies' => 1,
                    'FileSystemId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::PutLifecycleConfiguration - Arguments for method PutLifecycleConfiguration on L<Paws::EFS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutLifecycleConfiguration on the
L<Amazon Elastic File System|Paws::EFS> service. Use the attributes of this class
as arguments to method PutLifecycleConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutLifecycleConfiguration.

=head1 SYNOPSIS

    my $elasticfilesystem = Paws->service('EFS');
    my $LifecycleConfigurationDescription =
      $elasticfilesystem->PutLifecycleConfiguration(
      FileSystemId      => 'MyFileSystemId',
      LifecyclePolicies => [
        {
          TransitionToIA => 'AFTER_14_DAYS'
          , # values: AFTER_14_DAYS, AFTER_30_DAYS, AFTER_60_DAYS, AFTER_90_DAYS; OPTIONAL
        },
        ...
      ],

      );

    # Results:
    my $LifecyclePolicies =
      $LifecycleConfigurationDescription->LifecyclePolicies;

    # Returns a L<Paws::EFS::LifecycleConfigurationDescription> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/PutLifecycleConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileSystemId => Str

The ID of the file system for which you are creating the
C<LifecycleConfiguration> object (String).



=head2 B<REQUIRED> LifecyclePolicies => ArrayRef[EFS_LifecyclePolicy]

An array of C<LifecyclePolicy> objects that define the file system's
C<LifecycleConfiguration> object. A C<LifecycleConfiguration> object
tells lifecycle management when to transition files from the Standard
storage class to the Infrequent Access storage class.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutLifecycleConfiguration in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

