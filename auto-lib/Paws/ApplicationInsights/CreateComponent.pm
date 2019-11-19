# Generated from json/callargs_class.tt

package Paws::ApplicationInsights::CreateComponent;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::ApplicationInsights::Types qw//;
  has ComponentName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ResourceGroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ResourceList => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateComponent');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApplicationInsights::CreateComponentResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ResourceList' => 1,
                    'ResourceGroupName' => 1,
                    'ComponentName' => 1
                  },
  'types' => {
               'ResourceGroupName' => {
                                        'type' => 'Str'
                                      },
               'ComponentName' => {
                                    'type' => 'Str'
                                  },
               'ResourceList' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::CreateComponent - Arguments for method CreateComponent on L<Paws::ApplicationInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateComponent on the
L<Amazon CloudWatch Application Insights|Paws::ApplicationInsights> service. Use the attributes of this class
as arguments to method CreateComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateComponent.

=head1 SYNOPSIS

    my $applicationinsights = Paws->service('ApplicationInsights');
    my $CreateComponentResponse = $applicationinsights->CreateComponent(
      ComponentName     => 'MyComponentName',
      ResourceGroupName => 'MyResourceGroupName',
      ResourceList      => [ 'MyResourceARN', ... ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/applicationinsights/CreateComponent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComponentName => Str

The name of the component.



=head2 B<REQUIRED> ResourceGroupName => Str

The name of the resource group.



=head2 B<REQUIRED> ResourceList => ArrayRef[Str|Undef]

The list of resource ARNs that belong to the component.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateComponent in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

