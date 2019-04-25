
package Paws::MigrationHub::NotifyApplicationState;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has Status => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'NotifyApplicationState');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHub::NotifyApplicationStateResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::NotifyApplicationState - Arguments for method NotifyApplicationState on L<Paws::MigrationHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method NotifyApplicationState on the
L<AWS Migration Hub|Paws::MigrationHub> service. Use the attributes of this class
as arguments to method NotifyApplicationState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to NotifyApplicationState.

=head1 SYNOPSIS

    my $mgh = Paws->service('MigrationHub');
    my $NotifyApplicationStateResult = $mgh->NotifyApplicationState(
      ApplicationId => 'MyApplicationId',
      Status        => 'NOT_STARTED',
      DryRun        => 1,                   # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgh/NotifyApplicationState>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The configurationId in ADS that uniquely identifies the grouped
application.



=head2 DryRun => Bool

Optional boolean flag to indicate whether any effect should take place.
Used to test if the caller has permission to make the call.



=head2 B<REQUIRED> Status => Str

Status of the application - Not Started, In-Progress, Complete.

Valid values are: C<"NOT_STARTED">, C<"IN_PROGRESS">, C<"COMPLETED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method NotifyApplicationState in L<Paws::MigrationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

