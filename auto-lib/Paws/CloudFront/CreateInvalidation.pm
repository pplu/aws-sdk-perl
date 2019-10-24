
package Paws::CloudFront::CreateInvalidation;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_InvalidationBatch/;
  has DistributionId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has InvalidationBatch => (is => 'ro', isa => CloudFront_InvalidationBatch, required => 1, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateInvalidation');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/2019-03-26/distribution/{DistributionId}/invalidation');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudFront::CreateInvalidationResult');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InvalidationBatch' => {
                                        'class' => 'Paws::CloudFront::InvalidationBatch',
                                        'type' => 'CloudFront_InvalidationBatch'
                                      },
               'DistributionId' => {
                                     'type' => 'Str'
                                   }
             },
  'ParamInURI' => {
                    'DistributionId' => 'DistributionId'
                  },
  'IsRequired' => {
                    'InvalidationBatch' => 1,
                    'DistributionId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateInvalidation - Arguments for method CreateInvalidation on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInvalidation2019_03_26 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreateInvalidation2019_03_26.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInvalidation2019_03_26.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CreateInvalidationResult = $cloudfront->CreateInvalidation(
      DistributionId    => 'Mystring',
      InvalidationBatch => {
        CallerReference => 'Mystring',
        Paths           => {
          Quantity => 1,
          Items    => [ 'Mystring', ... ],    # OPTIONAL
        },

      },

    );

    # Results:
    my $Invalidation = $CreateInvalidationResult->Invalidation;
    my $Location     = $CreateInvalidationResult->Location;

    # Returns a L<Paws::CloudFront::CreateInvalidationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreateInvalidation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DistributionId => Str

The distribution's id.



=head2 B<REQUIRED> InvalidationBatch => CloudFront_InvalidationBatch

The batch information for the invalidation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInvalidation2019_03_26 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

