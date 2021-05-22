
package Paws::S3::PutBucketIntelligentTieringConfiguration;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has Id => (is => 'ro', isa => 'Str', query_name => 'id', traits => ['ParamInQuery'], required => 1);
  has IntelligentTieringConfiguration => (is => 'ro', isa => 'Paws::S3::IntelligentTieringConfiguration', traits => ['ParamInBody'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketIntelligentTieringConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?intelligent-tiering');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketIntelligentTieringConfiguration - Arguments for method PutBucketIntelligentTieringConfiguration on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketIntelligentTieringConfiguration on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketIntelligentTieringConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketIntelligentTieringConfiguration.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->PutBucketIntelligentTieringConfiguration(
      Bucket                          => 'MyBucketName',
      Id                              => 'MyIntelligentTieringId',
      IntelligentTieringConfiguration => {
        Id       => 'MyIntelligentTieringId',
        Status   => 'Enabled',                  # values: Enabled, Disabled
        Tierings => [
          {
            AccessTier =>
              'ARCHIVE_ACCESS',    # values: ARCHIVE_ACCESS, DEEP_ARCHIVE_ACCESS
            Days => 1,

          },
          ...
        ],
        Filter => {
          And => {
            Prefix => 'MyPrefix',    # OPTIONAL
            Tags   => [
              {
                Key   => 'MyObjectKey',    # min: 1
                Value => 'MyValue',

              },
              ...                          # OPTIONAL
            ],                             # OPTIONAL
          },    # OPTIONAL
          Prefix => 'MyPrefix',    # OPTIONAL
          Tag    => {
            Key   => 'MyObjectKey',    # min: 1
            Value => 'MyValue',

          },    # OPTIONAL
        },    # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketIntelligentTieringConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the Amazon S3 bucket whose configuration you want to modify
or retrieve.



=head2 B<REQUIRED> Id => Str

The ID used to identify the S3 Intelligent-Tiering configuration.



=head2 B<REQUIRED> IntelligentTieringConfiguration => L<Paws::S3::IntelligentTieringConfiguration>

Container for S3 Intelligent-Tiering configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketIntelligentTieringConfiguration in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

