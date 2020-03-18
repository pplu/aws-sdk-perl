package Paws::SageMaker::TrialComponentSummary;
  use Moose;
  has CreatedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has LastModifiedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Paws::SageMaker::TrialComponentStatus');
  has TrialComponentArn => (is => 'ro', isa => 'Str');
  has TrialComponentName => (is => 'ro', isa => 'Str');
  has TrialComponentSource => (is => 'ro', isa => 'Paws::SageMaker::TrialComponentSource');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TrialComponentSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TrialComponentSummary object:

  $service_obj->Method(Att1 => { CreatedBy => $value, ..., TrialComponentSource => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TrialComponentSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedBy

=head1 DESCRIPTION

A summary of the properties of a trial component. To get all the
properties, call the DescribeTrialComponent API and provide the
C<TrialComponentName>.

=head1 ATTRIBUTES


=head2 CreatedBy => L<Paws::SageMaker::UserContext>

  Who created the component.


=head2 CreationTime => Str

  When the component was created.


=head2 DisplayName => Str

  The name of the component as displayed. If C<DisplayName> isn't
specified, C<TrialComponentName> is displayed.


=head2 EndTime => Str

  When the component ended.


=head2 LastModifiedBy => L<Paws::SageMaker::UserContext>

  Who last modified the component.


=head2 LastModifiedTime => Str

  When the component was last modified.


=head2 StartTime => Str

  When the component started.


=head2 Status => L<Paws::SageMaker::TrialComponentStatus>

  The status of the component. States include:

=over

=item *

InProgress

=item *

Completed

=item *

Failed

=back



=head2 TrialComponentArn => Str

  The ARN of the trial component.


=head2 TrialComponentName => Str

  The name of the trial component.


=head2 TrialComponentSource => L<Paws::SageMaker::TrialComponentSource>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

