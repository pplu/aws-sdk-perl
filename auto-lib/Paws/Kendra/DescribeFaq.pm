
package Paws::Kendra::DescribeFaq;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFaq');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::DescribeFaqResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DescribeFaq - Arguments for method DescribeFaq on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFaq on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method DescribeFaq.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFaq.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $DescribeFaqResponse = $kendra->DescribeFaq(
      Id      => 'MyFaqId',
      IndexId => 'MyIndexId',

    );

    # Results:
    my $CreatedAt    = $DescribeFaqResponse->CreatedAt;
    my $Description  = $DescribeFaqResponse->Description;
    my $ErrorMessage = $DescribeFaqResponse->ErrorMessage;
    my $FileFormat   = $DescribeFaqResponse->FileFormat;
    my $Id           = $DescribeFaqResponse->Id;
    my $IndexId      = $DescribeFaqResponse->IndexId;
    my $Name         = $DescribeFaqResponse->Name;
    my $RoleArn      = $DescribeFaqResponse->RoleArn;
    my $S3Path       = $DescribeFaqResponse->S3Path;
    my $Status       = $DescribeFaqResponse->Status;
    my $UpdatedAt    = $DescribeFaqResponse->UpdatedAt;

    # Returns a L<Paws::Kendra::DescribeFaqResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/DescribeFaq>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The unique identifier of the FAQ.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index that contains the FAQ.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFaq in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

