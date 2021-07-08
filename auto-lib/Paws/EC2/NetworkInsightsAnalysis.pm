package Paws::EC2::NetworkInsightsAnalysis;
  use Moose;
  has AlternatePathHints => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AlternatePathHint]', request_name => 'alternatePathHintSet', traits => ['NameInRequest']);
  has Explanations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Explanation]', request_name => 'explanationSet', traits => ['NameInRequest']);
  has FilterInArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'filterInArnSet', traits => ['NameInRequest']);
  has ForwardPathComponents => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PathComponent]', request_name => 'forwardPathComponentSet', traits => ['NameInRequest']);
  has NetworkInsightsAnalysisArn => (is => 'ro', isa => 'Str', request_name => 'networkInsightsAnalysisArn', traits => ['NameInRequest']);
  has NetworkInsightsAnalysisId => (is => 'ro', isa => 'Str', request_name => 'networkInsightsAnalysisId', traits => ['NameInRequest']);
  has NetworkInsightsPathId => (is => 'ro', isa => 'Str', request_name => 'networkInsightsPathId', traits => ['NameInRequest']);
  has NetworkPathFound => (is => 'ro', isa => 'Bool', request_name => 'networkPathFound', traits => ['NameInRequest']);
  has ReturnPathComponents => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PathComponent]', request_name => 'returnPathComponentSet', traits => ['NameInRequest']);
  has StartDate => (is => 'ro', isa => 'Str', request_name => 'startDate', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::NetworkInsightsAnalysis

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::NetworkInsightsAnalysis object:

  $service_obj->Method(Att1 => { AlternatePathHints => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::NetworkInsightsAnalysis object:

  $result = $service_obj->Method(...);
  $result->Att1->AlternatePathHints

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AlternatePathHints => ArrayRef[L<Paws::EC2::AlternatePathHint>]

Potential intermediate components.


=head2 Explanations => ArrayRef[L<Paws::EC2::Explanation>]

The explanations. For more information, see Reachability Analyzer
explanation codes
(https://docs.aws.amazon.com/vpc/latest/reachability/explanation-codes.html).


=head2 FilterInArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of the AWS resources that the path must
traverse.


=head2 ForwardPathComponents => ArrayRef[L<Paws::EC2::PathComponent>]

The components in the path from source to destination.


=head2 NetworkInsightsAnalysisArn => Str

The Amazon Resource Name (ARN) of the network insights analysis.


=head2 NetworkInsightsAnalysisId => Str

The ID of the network insights analysis.


=head2 NetworkInsightsPathId => Str

The ID of the path.


=head2 NetworkPathFound => Bool

Indicates whether the destination is reachable from the source.


=head2 ReturnPathComponents => ArrayRef[L<Paws::EC2::PathComponent>]

The components in the path from destination to source.


=head2 StartDate => Str

The time the analysis started.


=head2 Status => Str

The status of the network insights analysis.


=head2 StatusMessage => Str

The status message, if the status is C<failed>.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
