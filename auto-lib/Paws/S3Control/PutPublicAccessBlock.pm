
package Paws::S3Control::PutPublicAccessBlock;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::S3Control::Types qw/S3Control_PublicAccessBlockConfiguration/;
  has AccountId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has PublicAccessBlockConfiguration => (is => 'ro', isa => S3Control_PublicAccessBlockConfiguration, required => 1, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutPublicAccessBlock');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v20180820/configuration/publicAccessBlock');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PublicAccessBlockConfiguration' => {
                                                     'class' => 'Paws::S3Control::PublicAccessBlockConfiguration',
                                                     'type' => 'S3Control_PublicAccessBlockConfiguration'
                                                   },
               'AccountId' => {
                                'type' => 'Str'
                              }
             },
  'ParamInHeader' => {
                       'AccountId' => 'x-amz-account-id'
                     },
  'IsRequired' => {
                    'PublicAccessBlockConfiguration' => 1,
                    'AccountId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::PutPublicAccessBlock - Arguments for method PutPublicAccessBlock on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutPublicAccessBlock on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method PutPublicAccessBlock.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutPublicAccessBlock.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    $s3 -control->PutPublicAccessBlock(
      AccountId                      => 'MyAccountId',
      PublicAccessBlockConfiguration => {
        BlockPublicAcls       => 1,    # OPTIONAL
        BlockPublicPolicy     => 1,    # OPTIONAL
        IgnorePublicAcls      => 1,    # OPTIONAL
        RestrictPublicBuckets => 1,    # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/PutPublicAccessBlock>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str





=head2 B<REQUIRED> PublicAccessBlockConfiguration => S3Control_PublicAccessBlockConfiguration






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutPublicAccessBlock in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

