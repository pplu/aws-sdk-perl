
use Paws::API;


package Paws::ImportExport {
  use Moose;
  sub service { 'importexport' }
  sub version { '2010-06-01' }
  sub flattened_arrays { 0 }

  with 'Paws::API::Caller', 'Paws::API::SingleEndpointCaller', 'Paws::Net::V2Signature', 'Paws::Net::QueryCaller', 'Paws::Net::XMLResponse';

  
  sub CancelJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImportExport::CancelJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImportExport::CreateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetShippingLabel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImportExport::GetShippingLabel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImportExport::GetStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImportExport::ListJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImportExport::UpdateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImportExport - Perl Interface to AWS AWS Import/Export

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



AWS Import/Export Service AWS Import/Export accelerates transferring
large amounts of data between the AWS cloud and portable storage
devices that you mail to us. AWS Import/Export transfers data directly
onto and off of your storage devices using Amazon's high-speed internal
network and bypassing the Internet. For large data sets, AWS
Import/Export is often faster than Internet transfer and more cost
effective than upgrading your connectivity.










=head1 METHODS

=head2 CancelJob()

  Arguments described in: L<Paws::ImportExport::CancelJob>

  Returns: L<Paws::ImportExport::CancelJobOutput>

  

This operation cancels a specified job. Only the job owner can cancel
it. The operation fails if the job has already started or is complete.











=head2 CreateJob()

  Arguments described in: L<Paws::ImportExport::CreateJob>

  Returns: L<Paws::ImportExport::CreateJobOutput>

  

This operation initiates the process of scheduling an upload or
download of your data. You include in the request a manifest that
describes the data transfer specifics. The response to the request
includes a job ID, which you can use in other operations, a signature
that you use to identify your storage device, and the address where you
should ship your storage device.











=head2 GetShippingLabel()

  Arguments described in: L<Paws::ImportExport::GetShippingLabel>

  Returns: L<Paws::ImportExport::GetShippingLabelOutput>

  

This operation returns information about a job, including where the job
is in the processing pipeline, the status of the results, and the
signature value associated with the job. You can only return
information about jobs you own.











=head2 GetStatus()

  Arguments described in: L<Paws::ImportExport::GetStatus>

  Returns: L<Paws::ImportExport::GetStatusOutput>

  

This operation returns information about a job, including where the job
is in the processing pipeline, the status of the results, and the
signature value associated with the job. You can only return
information about jobs you own.











=head2 ListJobs()

  Arguments described in: L<Paws::ImportExport::ListJobs>

  Returns: L<Paws::ImportExport::ListJobsOutput>

  

This operation returns the jobs associated with the requester. AWS
Import/Export lists the jobs in reverse chronological order based on
the date of creation. For example if Job Test1 was created 2009Dec30
and Test2 was created 2010Feb05, the ListJobs operation would return
Test2 followed by Test1.











=head2 UpdateJob()

  Arguments described in: L<Paws::ImportExport::UpdateJob>

  Returns: L<Paws::ImportExport::UpdateJobOutput>

  

You use this operation to change the parameters specified in the
original manifest file by supplying a new manifest file. The manifest
file attached to this request replaces the original manifest file. You
can only use the operation after a CreateJob request but before the
data transfer starts and you can only use it on jobs you own.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

