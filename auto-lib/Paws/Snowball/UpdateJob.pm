# Generated from json/callargs_class.tt

package Paws::Snowball::UpdateJob;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Snowball::Types qw/Snowball_Notification Snowball_JobResource/;
  has AddressId => (is => 'ro', isa => Str, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has ForwardingAddressId => (is => 'ro', isa => Str, predicate => 1);
  has JobId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Notification => (is => 'ro', isa => Snowball_Notification, predicate => 1);
  has Resources => (is => 'ro', isa => Snowball_JobResource, predicate => 1);
  has RoleARN => (is => 'ro', isa => Str, predicate => 1);
  has ShippingOption => (is => 'ro', isa => Str, predicate => 1);
  has SnowballCapacityPreference => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateJob');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Snowball::UpdateJobResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Description' => {
                                  'type' => 'Str'
                                },
               'Resources' => {
                                'type' => 'Snowball_JobResource',
                                'class' => 'Paws::Snowball::JobResource'
                              },
               'SnowballCapacityPreference' => {
                                                 'type' => 'Str'
                                               },
               'JobId' => {
                            'type' => 'Str'
                          },
               'AddressId' => {
                                'type' => 'Str'
                              },
               'ShippingOption' => {
                                     'type' => 'Str'
                                   },
               'Notification' => {
                                   'type' => 'Snowball_Notification',
                                   'class' => 'Paws::Snowball::Notification'
                                 },
               'ForwardingAddressId' => {
                                          'type' => 'Str'
                                        },
               'RoleARN' => {
                              'type' => 'Str'
                            }
             },
  'IsRequired' => {
                    'JobId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::UpdateJob - Arguments for method UpdateJob on L<Paws::Snowball>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateJob on the
L<Amazon ImportE<sol>Export Snowball|Paws::Snowball> service. Use the attributes of this class
as arguments to method UpdateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateJob.

=head1 SYNOPSIS

    my $snowball = Paws->service('Snowball');
   # To update a job
   # This action allows you to update certain parameters for a job. Once the job
   # changes to a different job state, usually within 60 minutes of the job
   # being created, this action is no longer available.
    my $UpdateJobResult = $snowball->UpdateJob(
      'AddressId' => 'ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b',
      'Description' =>
'Upgraded to Edge, shipped to Finance Dept, and requested faster shipping speed - TS.',
      'JobId'                      => 'JID123e4567-e89b-12d3-a456-426655440000',
      'ShippingOption'             => 'NEXT_DAY',
      'SnowballCapacityPreference' => 'T100'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snowball/UpdateJob>

=head1 ATTRIBUTES


=head2 AddressId => Str

The ID of the updated Address object.



=head2 Description => Str

The updated description of this job's JobMetadata object.



=head2 ForwardingAddressId => Str

The updated ID for the forwarding address for a job. This field is not
supported in most regions.



=head2 B<REQUIRED> JobId => Str

The job ID of the job that you want to update, for example
C<JID123e4567-e89b-12d3-a456-426655440000>.



=head2 Notification => Snowball_Notification

The new or updated Notification object.



=head2 Resources => Snowball_JobResource

The updated C<JobResource> object, or the updated JobResource object.



=head2 RoleARN => Str

The new role Amazon Resource Name (ARN) that you want to associate with
this job. To create a role ARN, use the CreateRole
(https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html)AWS
Identity and Access Management (IAM) API action.



=head2 ShippingOption => Str

The updated shipping option value of this job's ShippingDetails object.

Valid values are: C<"SECOND_DAY">, C<"NEXT_DAY">, C<"EXPRESS">, C<"STANDARD">

=head2 SnowballCapacityPreference => Str

The updated C<SnowballCapacityPreference> of this job's JobMetadata
object. The 50 TB Snowballs are only available in the US regions.

Valid values are: C<"T50">, C<"T80">, C<"T100">, C<"T42">, C<"NoPreference">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateJob in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

