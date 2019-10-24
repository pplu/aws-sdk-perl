# Generated from json/callresult_class.tt

package Paws::SageMaker::DescribeCodeRepositoryOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw/SageMaker_GitConfig/;
  has CodeRepositoryArn => (is => 'ro', isa => Str, required => 1);
  has CodeRepositoryName => (is => 'ro', isa => Str, required => 1);
  has CreationTime => (is => 'ro', isa => Str, required => 1);
  has GitConfig => (is => 'ro', isa => SageMaker_GitConfig);
  has LastModifiedTime => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'LastModifiedTime' => {
                                       'type' => 'Str'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CodeRepositoryName' => {
                                         'type' => 'Str'
                                       },
               'GitConfig' => {
                                'class' => 'Paws::SageMaker::GitConfig',
                                'type' => 'SageMaker_GitConfig'
                              },
               'CodeRepositoryArn' => {
                                        'type' => 'Str'
                                      }
             },
  'IsRequired' => {
                    'CreationTime' => 1,
                    'LastModifiedTime' => 1,
                    'CodeRepositoryName' => 1,
                    'CodeRepositoryArn' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeCodeRepositoryOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CodeRepositoryArn => Str

The Amazon Resource Name (ARN) of the Git repository.


=head2 B<REQUIRED> CodeRepositoryName => Str

The name of the Git repository.


=head2 B<REQUIRED> CreationTime => Str

The date and time that the repository was created.


=head2 GitConfig => SageMaker_GitConfig

Configuration details about the repository, including the URL where the
repository is located, the default branch, and the Amazon Resource Name
(ARN) of the AWS Secrets Manager secret that contains the credentials
used to access the repository.


=head2 B<REQUIRED> LastModifiedTime => Str

The date and time that the repository was last changed.


=head2 _request_id => Str


=cut

1;