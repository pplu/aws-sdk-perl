
package Paws::OpsWorks::DescribeApps;
  use Moose;
  has AppIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StackId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApps');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::DescribeAppsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeApps - Arguments for method DescribeApps on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeApps on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method DescribeApps.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeApps.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    my $DescribeAppsResult = $opsworks->DescribeApps(
      AppIds => [ 'MyString', ... ],    # OPTIONAL
      StackId => 'MyString',            # OPTIONAL
    );

    # Results:
    my $Apps = $DescribeAppsResult->Apps;

    # Returns a L<Paws::OpsWorks::DescribeAppsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/DescribeApps>

=head1 ATTRIBUTES


=head2 AppIds => ArrayRef[Str|Undef]

An array of app IDs for the apps to be described. If you use this
parameter, C<DescribeApps> returns a description of the specified apps.
Otherwise, it returns a description of every app.



=head2 StackId => Str

The app stack ID. If you use this parameter, C<DescribeApps> returns a
description of the apps in the specified stack.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeApps in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

