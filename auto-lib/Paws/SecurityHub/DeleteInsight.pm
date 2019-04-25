
package Paws::SecurityHub::DeleteInsight;
  use Moose;
  has InsightArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InsightArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInsight');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/insights/{InsightArn+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::DeleteInsightResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DeleteInsight - Arguments for method DeleteInsight on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteInsight on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method DeleteInsight.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteInsight.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $DeleteInsightResponse = $securityhub->DeleteInsight(
      InsightArn => 'MyNonEmptyString',

    );

    # Results:
    my $InsightArn = $DeleteInsightResponse->InsightArn;

    # Returns a L<Paws::SecurityHub::DeleteInsightResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/DeleteInsight>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InsightArn => Str

The ARN of the insight that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteInsight in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

