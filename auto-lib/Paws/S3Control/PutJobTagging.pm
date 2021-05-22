
package Paws::S3Control::PutJobTagging;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has JobId => (is => 'ro', isa => 'Str', uri_name => 'id', traits => ['ParamInURI'], required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::S3Tag]', required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutJobTagging');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/jobs/{id}/tagging');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::PutJobTaggingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'PutJobTaggingRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://awss3control.amazonaws.com/doc/2018-08-20/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::PutJobTagging - Arguments for method PutJobTagging on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutJobTagging on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method PutJobTagging.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutJobTagging.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $PutJobTaggingResult = $s3 -control->PutJobTagging(
      AccountId => 'MyAccountId',
      JobId     => 'MyJobId',
      Tags      => [
        {
          Key   => 'MyTagKeyString',      # min: 1, max: 1024
          Value => 'MyTagValueString',    # max: 1024

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/PutJobTagging>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The AWS account ID associated with the S3 Batch Operations job.



=head2 B<REQUIRED> JobId => Str

The ID for the S3 Batch Operations job whose tags you want to replace.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::S3Control::S3Tag>]

The set of tags to associate with the S3 Batch Operations job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutJobTagging in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

