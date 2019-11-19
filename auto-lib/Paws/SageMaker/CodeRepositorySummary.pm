# Generated from default/object.tt
package Paws::SageMaker::CodeRepositorySummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw/SageMaker_GitConfig/;
  has CodeRepositoryArn => (is => 'ro', isa => Str, required => 1);
  has CodeRepositoryName => (is => 'ro', isa => Str, required => 1);
  has CreationTime => (is => 'ro', isa => Str, required => 1);
  has GitConfig => (is => 'ro', isa => SageMaker_GitConfig);
  has LastModifiedTime => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CodeRepositoryArn' => {
                                        'type' => 'Str'
                                      },
               'CodeRepositoryName' => {
                                         'type' => 'Str'
                                       },
               'GitConfig' => {
                                'class' => 'Paws::SageMaker::GitConfig',
                                'type' => 'SageMaker_GitConfig'
                              },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'LastModifiedTime' => {
                                       'type' => 'Str'
                                     }
             },
  'IsRequired' => {
                    'CreationTime' => 1,
                    'CodeRepositoryName' => 1,
                    'CodeRepositoryArn' => 1,
                    'LastModifiedTime' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CodeRepositorySummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::CodeRepositorySummary object:

  $service_obj->Method(Att1 => { CodeRepositoryArn => $value, ..., LastModifiedTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::CodeRepositorySummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CodeRepositoryArn

=head1 DESCRIPTION

Specifies summary information about a Git repository.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CodeRepositoryArn => Str

  The Amazon Resource Name (ARN) of the Git repository.


=head2 B<REQUIRED> CodeRepositoryName => Str

  The name of the Git repository.


=head2 B<REQUIRED> CreationTime => Str

  The date and time that the Git repository was created.


=head2 GitConfig => SageMaker_GitConfig

  Configuration details for the Git repository, including the URL where
it is located and the ARN of the AWS Secrets Manager secret that
contains the credentials used to access the repository.


=head2 B<REQUIRED> LastModifiedTime => Str

  The date and time that the Git repository was last modified.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

