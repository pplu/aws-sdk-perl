
package Paws::AccessAnalyzer::UpdateFindings;
  use Moose;
  has AnalyzerArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'analyzerArn', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Ids => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ids');
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFindings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/finding');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::UpdateFindings - Arguments for method UpdateFindings on L<Paws::AccessAnalyzer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFindings on the
L<Access Analyzer|Paws::AccessAnalyzer> service. Use the attributes of this class
as arguments to method UpdateFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFindings.

=head1 SYNOPSIS

    my $access-analyzer = Paws->service('AccessAnalyzer');
    $access -analyzer->UpdateFindings(
      AnalyzerArn => 'MyAnalyzerArn',
      Status      => 'ACTIVE',
      ClientToken => 'MyString',                # OPTIONAL
      Ids         => [ 'MyFindingId', ... ],    # OPTIONAL
      ResourceArn => 'MyResourceArn',           # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer/UpdateFindings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalyzerArn => Str

The ARN of the analyzer that generated the findings to update.



=head2 ClientToken => Str

A client token.



=head2 Ids => ArrayRef[Str|Undef]

The IDs of the findings to update.



=head2 ResourceArn => Str

The ARN of the resource identified in the finding.



=head2 B<REQUIRED> Status => Str

The state represents the action to take to update the finding Status.
Use C<ARCHIVE> to change an Active finding to an Archived finding. Use
C<ACTIVE> to change an Archived finding to an Active finding.

Valid values are: C<"ACTIVE">, C<"ARCHIVED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFindings in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

